module Rack
  class AvvoIgnite

    def initialize(app, options = {})
      @app = app
      @ignite_host = options[:host] || "ia.avvo.com"
      @tracker_code = options[:code]
    end

    def call(env)
      status, headers, response = @app.call(env)

      if headers['Content-Type'].to_s.include?('text/html') # Only update HTML bodies
        response.each do |part|
          if part.rindex('</body>')
            part.gsub!('</body>', message + '</body>')
            headers['Content-Length'] = (headers['Content-Length'].to_i + message.length).to_s
          end
        end
      end

      [status, headers, response]
    end

    private

    def message
      %{<script type="text/javascript">(function(){setTimeout(function(){var s = document.createElement('script');s.type="text/javascript";s.async=true;s.src="//#{@ignite_host}/tracker/#{@tracker_code}.js";var x=document.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);},1)})();</script>}
    end

  end
end