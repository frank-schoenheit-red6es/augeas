(*
Module: Test_OpenShift_Quickstarts
  Provides unit tests and examples for the <OpenShift_Quickstarts> lens.
*)

module Test_OpenShift_Quickstarts =

(* Variable: conf *)
let conf = "[
  {\"quickstart\": {
    \"id\": \"1\",
    \"name\":\"CakePHP\",
    \"website\":\"http://cakephp.org/\",
    \"initial_git_url\":\"git://github.com/openshift/cakephp-example.git\",
    \"cartridges\":[\"php-5.4\",\"mysql-5.1\"],
    \"summary\":\"CakePHP is a rapid development framework for PHP which uses commonly known design patterns like Active Record, Association Data Mapping, Front Controller and MVC.\",
    \"tags\":[\"php\",\"cakephp\",\"framework\"],
    \"admin_tags\":[]
  }},
  {\"quickstart\": {
    \"id\": \"2\",
    \"name\":\"Django\",
    \"website\":\"https://www.djangoproject.com/\",
    \"initial_git_url\":\"git://github.com/openshift/django-example.git\",
    \"cartridges\":[\"python-2.7\"],
    \"summary\":\"A high-level Python web framework that encourages rapid development and clean, pragmatic design. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS.\",
    \"tags\":[\"python\",\"django\",\"framework\"],
    \"admin_tags\":[]
  }},
  {\"quickstart\":{
    \"id\": \"4\",
    \"name\":\"Drupal\",
    \"website\":\"http://drupal.org/\",
    \"initial_git_url\":\"git://github.com/openshift/drupal-example.git\",
    \"cartridges\":[\"php-5.4\",\"mysql-5.1\"],
    \"summary\":\"An open source content management platform written in PHP powering millions of websites and applications. It is built, used, and supported by an active and diverse community of people around the world. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS.\",
    \"tags\":[\"php\",\"drupal\",\"wiki\",\"framework\",\"instant_app\"],
    \"admin_tags\":[]
  }},
 {\"quickstart\":{
    \"id\": \"6\",
    \"name\":\"Ruby on Rails\",
    \"website\":\"http://rubyonrails.org/\",
    \"initial_git_url\":\"git://github.com/openshift/rails-example.git\",
    \"cartridges\":[\"ruby-1.9\",\"mysql-5.1\"],
    \"summary\":\"An open source web framework for Ruby that is optimized for programmer happiness and sustainable productivity. It lets you write beautiful code by favoring convention over configuration.\",
    \"tags\":[\"ruby\",\"rails\",\"framework\"],
    \"admin_tags\":[]
  }},
 {\"quickstart\":{
    \"id\": \"8\",
    \"name\":\"WordPress\",
    \"website\":\"http://wordpress.org\",
    \"initial_git_url\":\"git://github.com/openshift/wordpress-example.git\",
    \"cartridges\":[\"php-5.4\",\"mysql-5.1\"],
    \"summary\":\"A semantic personal publishing platform written in PHP with a MySQL back end, focusing on aesthetics, web standards, and usability. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS.\",
    \"tags\":[\"php\",\"wordpress\",\"blog\",\"framework\",\"instant_app\"],
    \"admin_tags\":[]
  }}
]"

(* Variable: new_conf *) 
let new_conf = "[
  {\"quickstart\": {
    \"id\": \"1\",
    \"name\":\"CakePHP\",
    \"website\":\"http://cakephp.org/\",
    \"initial_git_url\":\"git://github.com/openshift/cakephp-example.git\",
    \"cartridges\":[\"php-5.4\",\"mysql-5.1\"],
    \"summary\":\"CakePHP is a rapid development framework for PHP which uses commonly known design patterns like Active Record, Association Data Mapping, Front Controller and MVC.\",
    \"tags\":[\"php\",\"cakephp\",\"framework\"],
    \"admin_tags\":[]
  }},
  {\"quickstart\": {
    \"id\": \"2\",
    \"name\":\"Django\",
    \"website\":\"https://www.djangoproject.com/\",
    \"initial_git_url\":\"git://github.com/openshift/django-example.git\",
    \"cartridges\":[\"python-2.7\"],
    \"summary\":\"A high-level Python web framework that encourages rapid development and clean, pragmatic design. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS.\",
    \"tags\":[\"python\",\"django\",\"framework\"],
    \"admin_tags\":[]
  }},
  {\"quickstart\":{
    \"id\": \"4\",
    \"name\":\"Drupal\",
    \"website\":\"http://drupal.org/\",
    \"initial_git_url\":\"git://github.com/openshift/drupal-example.git\",
    \"cartridges\":[\"php-5.4\",\"mysql-5.1\"],
    \"summary\":\"An open source content management platform written in PHP powering millions of websites and applications. It is built, used, and supported by an active and diverse community of people around the world. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS.\",
    \"tags\":[\"php\",\"drupal\",\"wiki\",\"framework\",\"instant_app\"],
    \"admin_tags\":[]
  }},
 {\"quickstart\":{
    \"id\": \"6\",
    \"name\":\"Ruby on Rails\",
    \"website\":\"http://rubyonrails.org/\",
    \"initial_git_url\":\"git://github.com/openshift/rails-example.git\",
    \"cartridges\":[\"ruby-1.9\",\"mysql-5.1\"],
    \"summary\":\"An open source web framework for Ruby that is optimized for programmer happiness and sustainable productivity. It lets you write beautiful code by favoring convention over configuration.\",
    \"tags\":[\"ruby\",\"rails\",\"framework\"],
    \"admin_tags\":[]
  }},
 {\"quickstart\":{
    \"id\": \"8\",
    \"name\":\"WordPress\",
    \"website\":\"https://wordpress.org\",
    \"initial_git_url\":\"git://github.com/openshift/wordpress-example.git\",
    \"cartridges\":[\"php-5.4\",\"mysql-5.1\"],
    \"summary\":\"A semantic personal publishing platform written in PHP with a MySQL back end, focusing on aesthetics, web standards, and usability. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS.\",
    \"tags\":[\"php\",\"wordpress\",\"blog\",\"framework\",\"instant_app\"],
    \"admin_tags\":[]
  }}
]"

(* Test: OpenShift_Quickstarts.lns *)
test OpenShift_Quickstarts.lns get conf =
  { "array"
    { }
    { "dict"
      { "entry" = "quickstart"
        { "dict"
          { }
          { "entry" = "id"
            { "string" = "1" }
          }
          { }
          { "entry" = "name"
            { "string" = "CakePHP" }
          }
          { }
          { "entry" = "website"
            { "string" = "http://cakephp.org/" }
          }
          { }
          { "entry" = "initial_git_url"
            { "string" = "git://github.com/openshift/cakephp-example.git" }
          }
          { }
          { "entry" = "cartridges"
            { "array"
              { "string" = "php-5.4" }
              { "string" = "mysql-5.1" }
            }
          }
          { }
          { "entry" = "summary"
            { "string" = "CakePHP is a rapid development framework for PHP which uses commonly known design patterns like Active Record, Association Data Mapping, Front Controller and MVC." }
          }
          { }
          { "entry" = "tags"
            { "array"
              { "string" = "php" }
              { "string" = "cakephp" }
              { "string" = "framework" }
            }
          }
          { }
          { "entry" = "admin_tags"
            { "array" }
          }
        }
      }
    }
    { }
    { "dict"
      { "entry" = "quickstart"
        { "dict"
          { }
          { "entry" = "id"
            { "string" = "2" }
          }
          { }
          { "entry" = "name"
            { "string" = "Django" }
          }
          { }
          { "entry" = "website"
            { "string" = "https://www.djangoproject.com/" }
          }
          { }
          { "entry" = "initial_git_url"
            { "string" = "git://github.com/openshift/django-example.git" }
          }
          { }
          { "entry" = "cartridges"
            { "array"
              { "string" = "python-2.7" }
            }
          }
          { }
          { "entry" = "summary"
            { "string" = "A high-level Python web framework that encourages rapid development and clean, pragmatic design. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS." }
          }
          { }
          { "entry" = "tags"
            { "array"
              { "string" = "python" }
              { "string" = "django" }
              { "string" = "framework" }
            }
          }
          { }
          { "entry" = "admin_tags"
            { "array" }
          }
        }
      }
    }
    { }
    { "dict"
      { "entry" = "quickstart"
        { "dict"
          { }
          { "entry" = "id"
            { "string" = "4" }
          }
          { }
          { "entry" = "name"
            { "string" = "Drupal" }
          }
          { }
          { "entry" = "website"
            { "string" = "http://drupal.org/" }
          }
          { }
          { "entry" = "initial_git_url"
            { "string" = "git://github.com/openshift/drupal-example.git" }
          }
          { }
          { "entry" = "cartridges"
            { "array"
              { "string" = "php-5.4" }
              { "string" = "mysql-5.1" }
            }
          }
          { }
          { "entry" = "summary"
            { "string" = "An open source content management platform written in PHP powering millions of websites and applications. It is built, used, and supported by an active and diverse community of people around the world. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS." }
          }
          { }
          { "entry" = "tags"
            { "array"
              { "string" = "php" }
              { "string" = "drupal" }
              { "string" = "wiki" }
              { "string" = "framework" }
              { "string" = "instant_app" }
            }
          }
          { }
          { "entry" = "admin_tags"
            { "array" }
          }
        }
      }
    }
    { }
    { "dict"
      { "entry" = "quickstart"
        { "dict"
          { }
          { "entry" = "id"
            { "string" = "6" }
          }
          { }
          { "entry" = "name"
            { "string" = "Ruby on Rails" }
          }
          { }
          { "entry" = "website"
            { "string" = "http://rubyonrails.org/" }
          }
          { }
          { "entry" = "initial_git_url"
            { "string" = "git://github.com/openshift/rails-example.git" }
          }
          { }
          { "entry" = "cartridges"
            { "array"
              { "string" = "ruby-1.9" }
              { "string" = "mysql-5.1" }
            }
          }
          { }
          { "entry" = "summary"
            { "string" = "An open source web framework for Ruby that is optimized for programmer happiness and sustainable productivity. It lets you write beautiful code by favoring convention over configuration." }
          }
          { }
          { "entry" = "tags"
            { "array"
              { "string" = "ruby" }
              { "string" = "rails" }
              { "string" = "framework" }
            }
          }
          { }
          { "entry" = "admin_tags"
            { "array" }
          }
        }
      }
    }
    { }
    { "dict"
      { "entry" = "quickstart"
        { "dict"
          { }
          { "entry" = "id"
            { "string" = "8" }
          }
          { }
          { "entry" = "name"
            { "string" = "WordPress" }
          }
          { }
          { "entry" = "website"
            { "string" = "http://wordpress.org" }
          }
          { }
          { "entry" = "initial_git_url"
            { "string" = "git://github.com/openshift/wordpress-example.git" }
          }
          { }
          { "entry" = "cartridges"
            { "array"
              { "string" = "php-5.4" }
              { "string" = "mysql-5.1" }
            }
          }
          { }
          { "entry" = "summary"
            { "string" = "A semantic personal publishing platform written in PHP with a MySQL back end, focusing on aesthetics, web standards, and usability. Administrator user name and password are written to $OPENSHIFT_DATA_DIR/CREDENTIALS." }
          }
          { }
          { "entry" = "tags"
            { "array"
              { "string" = "php" }
              { "string" = "wordpress" }
              { "string" = "blog" }
              { "string" = "framework" }
              { "string" = "instant_app" }
            }
          }
          { }
          { "entry" = "admin_tags"
            { "array" }
          }
        }
      }
      { }
    }
}


(* FIXME: not yet supported:
 * The manner in which the JSON utility lens currently works does not maintain
 * whitepsace as per the Augeas specification in the put direction.

test OpenShift_Quickstarts.lns put conf after set "/array/dict[5]/entry/dict/entry[3]/string" "https://wordpress.org"
  = new_conf *)

(* vim: set ts=4  expandtab  sw=4: *)
