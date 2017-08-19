skynetroot = "./skynet/"
thread = 2
logger = nil
logpath = "."
harbor = 0
start = "main"	-- main script
bootstrap = "snlua bootstrap"	-- The service for bootstrap

-- ��Ⱥ���������ļ�
cluster = "./cluster/clustername.lua"

log_dirname = "log"
log_basename = "login"

loginservice = "./login/?.lua;" ..
			   "./common/?.lua;" ..
			   "./common/cluster/?.lua;" ..
			   "./common/datacenter/?.lua"

-- LUA��������λ��
luaservice = skynetroot .. "service/?.lua;" .. loginservice
snax = loginservice

-- ���ڼ���LUA�����LUA����
lualoader = skynetroot .. "lualib/loader.lua"
preload = "./global/preload.lua"	-- run preload.lua before every lua service run

-- C��д�ķ���ģ��·��
cpath = skynetroot .. "cservice/?.so"

-- ����ӵ� package.path �е�·������ require ���á�
lua_path = skynetroot .. "lualib/?.lua;" ..
		   "./lualib/?.lua;" ..
		   "./global/?.lua;" ..
		   "./common/entitybase/?.lua;" ..
		   "./common/entity/?.lua"

-- ����ӵ� package.cpath �е�·������ require ���á�
lua_cpath = skynetroot .. "luaclib/?.so;" .. "./luaclib/?.so"

-- ��̨ģʽ
--daemon = "./login.pid"

port = $METOO_PORT				-- �����˿�

mysql_maxconn = 2					-- mysql���ݿ����������
mysql_host = "$METOO_MYSQL_HOST"	-- mysql���ݿ�����
mysql_port = $METOO_MYSQL_PORT		-- mysql���ݿ�˿�
mysql_db = "$METOO_MYSQL_DB"		-- mysql���ݿ����
mysql_user = "$METOO_MYSQL_USER"	-- mysql���ݿ��ʺ�
mysql_pwd = "$METOO_MYSQL_PWD"		-- mysql���ݿ�����

redis_maxinst = 1			-- redis���ʵ����
redis_index = 1
redis_host1 = "127.0.0.1"	-- redis���ݿ�IP

redis_port1 = 6379			-- redis���ݿ�˿�
redis_auth1 = "123456"		-- redis���ݿ�����
