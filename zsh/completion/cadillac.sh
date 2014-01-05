#!/bin/bash
 
# Built with MooseX::App::Plugin::BashCompletion::Command on 2013/09/05
 
cadillac_COMMANDS='help run_server run_cron backend create_database apply_updates generate_doc make_fixture repl prove bash_completion create_migration check_schema load_data'
 
_cadillac_macc_help() {
    if [ $COMP_CWORD = 2 ]; then
        _cadillac_compreply "$cadillac_COMMANDS"
    else
        COMPREPLY=()
    fi
}

_cadillac_macc_run_server() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --debug -d --port -p --restart -r --dbic_trace -t --dbic_stack_trace --st --config --help -h --usage -?"
}

_cadillac_macc_apply_updates() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --schema-class --connection-info --file -f --hack -h --config --help -h --usage -?"
}

_cadillac_macc_create_database() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --schema-class --connection-info --db_extensions --config --help -h --usage -?"
}

_cadillac_macc_backend() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --mq_exchange --schema-class --connection-info --mq_connection --requeue --job-config --nproc --pid-file --daemonize --stop --restart --restart-workers --status --add-worker --remove-worker --config --help -h --usage -?"
}

_cadillac_macc_run_cron() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --mq_exchange --schema-class --connection-info --mq_connection --date -d --test -t --list --ls --job-id -j --config --help -h --usage -?"
}

_cadillac_macc_generate_doc() {
    _cadillac_compreply "--app --time-zone --tz --base-directory --lib -l --includes -I --logconf --book --verbose --gen-wiki --gen-samples --doc-dir --styles-dir --temp-dir --fop-bin --output-format --output-file --request-response-format --stylesheet --config --help -h --usage -?"
}

_cadillac_macc_make_fixture() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --environment-class -E --config --help -h --usage -?"
}

_cadillac_macc_repl() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --schema-class --connection-info --dbic-trace -D --config --help -h --usage -?"
}

_cadillac_macc_prove() {
    _cadillac_compreply "--app --time-zone --tz --base-directory --lib -l --includes -I --logconf --harness --parser --formatter --exec --server-class --verbose --color -c --merge -m --recurse -r --timer --author --release --jobs --state --ext --dump-tap --exclude_tests -X --keepalive --config --help -h --usage -?"
}

_cadillac_macc_check_schema() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --schema-class --connection-info --config --help -h --usage -?"
}

_cadillac_macc_create_migration() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --schema-class --connection-info --create --update --edit -e --description -d --refresh -r --force -f --db_extensions --config --help -h --usage -?"
}

_cadillac_macc_bash_completion() {
    _cadillac_compreply "--help -h --usage -?"
}

_cadillac_macc_load_data() {
    _cadillac_compreply "--app --time-zone --tz --verbose -v --base-directory --lib -l --includes -I --logconf --schema-class --connection-info --force -u --current_user_id --config --help -h --usage -?"
}

_cadillac_compreply() {
    COMPREPLY=($(compgen -W "$1" -- ${COMP_WORDS[COMP_CWORD]}))
}
 
_cadillac_macc() {
    case $COMP_CWORD in
        0)
            ;;
        1)
            _cadillac_compreply "$cadillac_COMMANDS"
            ;;
        *)
            eval _cadillac_macc_${COMP_WORDS[1]}
             
    esac
}
 
complete -o default -F _cadillac_macc cadillac


