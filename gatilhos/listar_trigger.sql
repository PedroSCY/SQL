use gatilhos;

show triggers;

show triggers from gatilhos where `table` = "pedidos";

show triggers from gatilhos where `trigger` like "tr_%id";

show triggers from gatilhos where `trigger` like "%atualizar%";