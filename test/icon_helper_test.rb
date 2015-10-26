require 'test_helper'

class WeatherSeven::Rails::IconHelperTest < ActionView::TestCase

  test "#w7_icon with no args should render an wind icon" do
    assert_icon i("pe-7w-wind")
  end

  test "#w7_icon should render different individual icons" do
    assert_icon i("pe-7w-wind"),       "wind"
    assert_icon i("pe-7w-sun"),        "sun"
    assert_icon i("pe-7w-snow-moon"),  "snow-moon"
  end

  test "#w7_icon should incorporate additional class styles" do
    assert_icon i("pe-7w-wind pull-right"),         "wind", :class => "pull-right"
    assert_icon i("pe-7w-wind pull-right success"), "wind", :class => "pull-right success"
  end

  test "#w7_icon should incorporate a text suffix" do
    assert_icon "#{i("pe-7w-sun")} Take a photo", "sun", :text => "Take a photo"
  end

  test "#w7_icon should html escape text" do
    assert_icon "#{i("pe-7w-sun")} &lt;script&gt;&lt;/script&gt;", "sun", :text => "<script></script>"
  end

  test "#w7_icon should not html escape safe text" do
    assert_icon "#{i("pe-7w-sun")} <script></script>", "sun", :text => "<script></script>".html_safe
  end

  test "#w7_icon should pull it all together" do
    assert_icon "#{i("pe-7w-sun pull-right")} Take a photo", "sun", :text => "Take a photo", :class => "pull-right"
  end

  test "#w7_icon should pass all other options through" do
    assert_icon %(<i class="pe-7w-sunset" data-id="123"></i>), "sunset", :data => { :id => 123 }
  end

  private

  def assert_icon(expected, *args)
    message = "`w7_icon(#{args.inspect[1...-1]})` should return `#{expected}`"
    assert_dom_equal expected, w7_icon(*args), message
  end

  def i(classes)
    %(<i class="#{classes}"></i>)
  end
end
