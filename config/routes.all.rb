                                  Prefix Verb   URI Pattern                                                                                       Controller#Action
                        new_user_session GET    /users/sign_in(.:format)                                                                          devise/sessions#new
                            user_session POST   /users/sign_in(.:format)                                                                          devise/sessions#create
                    destroy_user_session DELETE /users/sign_out(.:format)                                                                         devise/sessions#destroy
                       new_user_password GET    /users/password/new(.:format)                                                                     devise/passwords#new
                      edit_user_password GET    /users/password/edit(.:format)                                                                    devise/passwords#edit
                           user_password PATCH  /users/password(.:format)                                                                         devise/passwords#update
                                         PUT    /users/password(.:format)                                                                         devise/passwords#update
                                         POST   /users/password(.:format)                                                                         devise/passwords#create
                cancel_user_registration GET    /users/cancel(.:format)                                                                           devise/registrations#cancel
                   new_user_registration GET    /users/sign_up(.:format)                                                                          devise/registrations#new
                  edit_user_registration GET    /users/edit(.:format)                                                                             devise/registrations#edit
                       user_registration PATCH  /users(.:format)                                                                                  devise/registrations#update
                                         PUT    /users(.:format)                                                                                  devise/registrations#update
                                         DELETE /users(.:format)                                                                                  devise/registrations#destroy
                                         POST   /users(.:format)                                                                                  devise/registrations#create
                                    root GET    /                                                                                                 homes#top
                                   about GET    /homes/about(.:format)                                                                            homes#about
                                         DELETE /books/:id(.:format)                                                                              books#destroy
                                   users GET    /users(.:format)                                                                                  users#index
                               edit_user GET    /users/:id/edit(.:format)                                                                         users#edit
                                    user GET    /users/:id(.:format)                                                                              users#show
                                         PATCH  /users/:id(.:format)                                                                              users#update
                                         PUT    /users/:id(.:format)                                                                              users#update
                                   books GET    /books(.:format)                                                                                  books#index
                                         POST   /books(.:format)                                                                                  books#create
                               edit_book GET    /books/:id/edit(.:format)                                                                         books#edit
                                    book GET    /books/:id(.:format)                                                                              books#show
                                         PATCH  /books/:id(.:format)                                                                              books#update
                                         PUT    /books/:id(.:format)                                                                              books#update
                                         DELETE /books/:id(.:format)                                                                              books#destroy
           rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
              rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
           rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
     rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
           rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
            rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
          rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
                                         POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
       new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
      edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                                 rails/conductor/action_mailbox/inbound_emails#edit
           rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
                                         PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
                                         PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
                                         DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
   rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
   rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
                      rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
                rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
                                         GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
               rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
         rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
                                         GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
                      rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
               update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
                    rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
                    
rspec ./spec/system/03_finishing_touches_spec.rb:179 # [STEP3] 仕上げのテスト ログインしていない場合のアクセス制限のテスト: アクセスできず、ログイン画面に遷移する ユーザ一覧画面
rspec ./spec/system/03_finishing_touches_spec.rb:183 # [STEP3] 仕上げのテスト ログインしていない場合のアクセス制限のテスト: アクセスできず、ログイン画面に遷移する ユーザ詳細画面
rspec ./spec/system/03_finishing_touches_spec.rb:187 # [STEP3] 仕上げのテスト ログインしていない場合のアクセス制限のテスト: アクセスできず、ログイン画面に遷移する ユーザ情報編集画面
rspec ./spec/system/03_finishing_touches_spec.rb:191 # [STEP3] 仕上げのテスト ログインしていない場合のアクセス制限のテスト: アクセスできず、ログイン画面に遷移する 投稿一覧画面
rspec ./spec/system/03_finishing_touches_spec.rb:195 # [STEP3] 仕上げのテスト ログインしていない場合のアクセス制限のテスト: アクセスできず、ログイン画面に遷移する 投稿詳細画面
rspec ./spec/system/03_finishing_touches_spec.rb:199 # [STEP3] 仕上げのテスト ログインしていない場合のアクセス制限のテスト: アクセスできず、ログイン画面に遷移する 投稿編集画面
rspec ./spec/system/03_finishing_touches_spec.rb:243 # [STEP3] 仕上げのテスト 他人の画面のテスト 他人の投稿詳細画面のテスト サイドバーの確認 他人の名前と紹介文が表示される
rspec ./spec/system/03_finishing_touches_spec.rb:247 # [STEP3] 仕上げのテスト 他人の画面のテスト 他人の投稿詳細画面のテスト サイドバーの確認 他人のユーザ編集画面へのリンクが存在する
rspec ./spec/system/03_finishing_touches_spec.rb:250 # [STEP3] 仕上げのテスト 他人の画面のテスト 他人の投稿詳細画面のテスト サイドバーの確認 自分の名前と紹介文は表示されない
rspec ./spec/system/03_finishing_touches_spec.rb:254 # [STEP3] 仕上げのテスト 他人の画面のテスト 他人の投稿詳細画面のテスト サイドバーの確認 自分のユーザ編集画面へのリンクは存在しない
rspec ./spec/system/03_finishing_touches_spec.rb:265 # [STEP3] 仕上げのテスト 他人の画面のテスト 他人の投稿編集画面 遷移できず、投稿一覧画面にリダイレクトされる
rspec ./spec/system/03_finishing_touches_spec.rb:363 # [STEP3] 仕上げのテスト アイコンのテスト トップ画面 本のアイコンが表示される
rspec ./spec/system/03_finishing_touches_spec.rb:375 # [STEP3] 仕上げのテスト アイコンのテスト アバウト画面 本のアイコンが表示される
