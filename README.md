stash
=====

logstash plugins


# How to run ?

Specify `-f` and `--pluginpath` options to run. For example,

  ```
  logstash --pluginpath . -f conf/cspoc.conf
  ```

# Tips

## Logstash

* Reparse the file

  ```
  input {
      sincedb_path => "/dev/null"
    }
  }
  ```

  link: http://stackoverflow.com/questions/19546900/how-to-force-logstash-to-reparse-a-file

## Kibana

* summing up terms as a whole string

  use `.raw` extension of field to prevent splitting of terms.

  link: http://stackoverflow.com/questions/23238750/kibana-summing-up-terms-as-a-whole-string
