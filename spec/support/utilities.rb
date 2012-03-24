def baslik(sayfa_basligi)

      on_tanimli = "Bu sayfaya baslik atanmamis"

          if sayfa_basligi.empty?
                  on_tanimli

          else
                "#{sayfa_basligi}"
      end
end


