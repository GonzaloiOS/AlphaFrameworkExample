Pod::Spec.new do |spec|

  spec.name         = "AlphaFrameworkExample"
  spec.version      = "1.0.0"
  spec.summary      = "This is our AlphaFramework. his is our AlphaFramework."

  spec.description  = "No idea right now No idea right now No idea right now No idea right now No idea right now"

  spec.homepage     = "https://github.com/GonzaloiOS/AlphaFrameworkExample"
  
  spec.license      = "MIT"

  spec.author       = { "Gonzalo Linares N" => "gonzalolinares@seven4n.com" }

  spec.platform     = :ios, "13.0"

  spec.source       = { :git => "https://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@github.com/GonzaloiOS/AlphaFrameworkExample.git", :tag => spec.version.to_s }


  spec.source_files  = "AlphaFrameworkExample/**/*.{swift}"
  spec.swift_versions = "5.0"

end
