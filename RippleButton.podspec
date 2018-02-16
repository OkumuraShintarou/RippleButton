Pod::Spec.new do |s|
  s.name         = "RippleButton"
  s.version      = "1.0.0"
  s.summary      = " This Library is PopButton Animation "
  s.description  = <<-DESC
		     - Like a wave Button animation is given
	             - Animation which has never existed
                   DESC
  s.homepage     = "https://github.com/OkumuraShintarou/RippleButton"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Shinta" => "flekystyley@gmail.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/OkumuraShintarou/RippleButton.git", :tag => s.version }
  s.source_files = "Classes/*.swift"
  s.swift_version = "4.0"
end
