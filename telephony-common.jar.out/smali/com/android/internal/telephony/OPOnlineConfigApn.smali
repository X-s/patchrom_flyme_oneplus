.class public Lcom/android/internal/telephony/OPOnlineConfigApn;
.super Ljava/lang/Object;
.source "OPOnlineConfigApn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OPOnlineConfigApn$1;,
        Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;,
        Lcom/android/internal/telephony/OPOnlineConfigApn$OPOnlineConfigApnUpdater;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_RESTORE_DEFAULT_APN:Ljava/lang/String; = "android.intent.action.restoreDefaultAPN"

.field private static final APNS_VERSION:Ljava/lang/String; = "apns version"

.field private static final CARRIERS_UNIQUE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final PROP_APNS_VERSION_UPDATED:Ljava/lang/String; = "persist.radio.apns_ver_updated"

.field private static final PROP_APNS_VERSION_XML:Ljava/lang/String; = "persist.radio.apns_ver_xml"

.field private static final READ_ONLY:Ljava/lang/String; = "read_only"

.field private static final TAG:Ljava/lang/String; = "OPOnlineConfigApn"

.field static final TELEPHONY:Landroid/net/Uri;

.field private static jsonApnsVersionInt:I

.field private static propApnsVersionInXML:I

.field private static propApnsVersionUpdated:I

.field private static updateFindFlag:Z

.field private static whereArgsUpdateFind:[Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mOPOnlineConfigApnHandler:Landroid/os/Handler;

.field private mOPOnlineConfigApnHandlerThread:Landroid/os/HandlerThread;

.field private mOPOnlineConfigApnObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/OPOnlineConfigApn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/OPOnlineConfigApn;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/OPOnlineConfigApn;Lorg/json/JSONArray;I)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "reset_prop_version"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->resolveOPOnlineConfigApnFromJSONandUpdateDb(Lorg/json/JSONArray;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/OPOnlineConfigApn;I)V
    .locals 0
    .param p1, "reset_prop_version"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->triggerOPOnlineConfigApnLoading(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sput v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->jsonApnsVersionInt:I

    .line 82
    sput v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionInXML:I

    .line 83
    sput v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionUpdated:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "numeric"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "mcc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "mnc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "apn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "proxy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "mmsproxy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "mmsport"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "mmsc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "carrier_enabled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "bearer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "mvno_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "mvno_match_data"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "profile_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string/jumbo v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->TELEPHONY:Landroid/net/Uri;

    .line 116
    sput-boolean v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->updateFindFlag:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/OPOnlineConfigApn;->whereArgsUpdateFind:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/android/internal/telephony/OPOnlineConfigApn$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/OPOnlineConfigApn$1;-><init>(Lcom/android/internal/telephony/OPOnlineConfigApn;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 697
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContext:Landroid/content/Context;

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContentResolver:Landroid/content/ContentResolver;

    .line 703
    :cond_0
    const-string/jumbo v0, "start mOPOnlineConfigApnHandlerThread"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 704
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "OPOnlineConfigApn"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnHandlerThread:Landroid/os/HandlerThread;

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 706
    new-instance v0, Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigApn$MyHandler;-><init>(Lcom/android/internal/telephony/OPOnlineConfigApn;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnHandler:Landroid/os/Handler;

    .line 708
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/telephony/OPOnlineConfigApn$OPOnlineConfigApnUpdater;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/OPOnlineConfigApn$OPOnlineConfigApnUpdater;-><init>(Lcom/android/internal/telephony/OPOnlineConfigApn;)V

    const-string/jumbo v4, "OPOnlineConfigApn"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnObserver:Lcom/oneplus/config/ConfigObserver;

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.restoreDefaultAPN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    return-void
.end method

.method private OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPaddBoolAttribute() key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 251
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPaddBoolAttribute exception message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPaddIntAttribute() key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPaddIntAttribute exception message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPaddStringAttribute() key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p3, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPaddStringAttribute exception message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private OPcheckTarget(Lorg/json/JSONObject;)Z
    .locals 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 561
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "deviceImei1":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 564
    const-string/jumbo v3, "OPcheckTarget() deviceImei1 = null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 565
    return v5

    .line 569
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OPcheckTarget() deviceImei1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 573
    :try_start_0
    const-string/jumbo v3, "imei"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "jsonImei":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OPcheckTarget() jsonImei = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    const-string/jumbo v3, "OPcheckTarget() jsonImei = deviceImei1 return true"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 581
    const/4 v3, 0x1

    return v3

    .line 585
    :cond_1
    const-string/jumbo v3, "OPcheckTarget() jsonImei != deviceImei1 return false"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 586
    return v5

    .line 591
    :cond_2
    const-string/jumbo v3, "OPcheckTarget() jsonImei = null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v2    # "jsonImei":Ljava/lang/String;
    :goto_0
    return v5

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OPcheckTarget() error message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private OPdeleteApn(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "delete_count":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPselectConflictingRow(Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v1

    .line 489
    .local v1, "oldRow":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OPdeleteApn() there is no row = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "in db. Do not delete APN !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=? AND "

    sget-object v6, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "where":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OPdeleteApn() where = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "whereArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OPdeleteApn() delete_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 510
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 508
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OPdeleteApn() there are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " old rows in db already. Do not delete APN !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private OPgetRow(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 12
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x0

    .line 262
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v3, "map":Landroid/content/ContentValues;
    :try_start_0
    const-string/jumbo v9, "mcc"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "mcc":Ljava/lang/String;
    const-string/jumbo v9, "mnc"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "mnc":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "numeric":Ljava/lang/String;
    const-string/jumbo v9, "numeric"

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v9, "mcc"

    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v9, "mnc"

    invoke-virtual {v3, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OPgetRow() mcc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mnc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", numeric = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const-string/jumbo v9, "carrier"

    const-string/jumbo v10, "name"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v9, "apn"

    const-string/jumbo v10, "apn"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v9, "user"

    const-string/jumbo v10, "user"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v9, "server"

    const-string/jumbo v10, "server"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v9, "password"

    const-string/jumbo v10, "password"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v9, "proxy"

    const-string/jumbo v10, "proxy"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v9, "port"

    const-string/jumbo v10, "port"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v9, "mmsproxy"

    const-string/jumbo v10, "mmsproxy"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v9, "mmsport"

    const-string/jumbo v10, "mmsport"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v9, "mmsc"

    const-string/jumbo v10, "mmsc"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v9, "type"

    const-string/jumbo v10, "type"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v9, "protocol"

    const-string/jumbo v10, "protocol"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v9, "roaming_protocol"

    const-string/jumbo v10, "roaming_protocol"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v9, "authtype"

    const-string/jumbo v10, "authtype"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v9, "bearer"

    const-string/jumbo v10, "bearer"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v9, "profile_id"

    const-string/jumbo v10, "profile_id"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v9, "max_conns"

    const-string/jumbo v10, "max_conns"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v9, "wait_time"

    const-string/jumbo v10, "wait_time"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v9, "max_conns_time"

    const-string/jumbo v10, "max_conns_time"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v9, "mtu"

    const-string/jumbo v10, "mtu"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v9, "carrier_enabled"

    const-string/jumbo v10, "carrier_enabled"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v9, "modem_cognitive"

    const-string/jumbo v10, "modem_cognitive"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v9, "user_visible"

    const-string/jumbo v10, "user_visible"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v9, "read_only"

    const-string/jumbo v10, "read_only"

    invoke-direct {p0, p1, v9, v3, v10}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "bearerBitmask":I
    :try_start_1
    const-string/jumbo v9, "bearer_bitmask"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "bearerList":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 316
    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v0

    .line 318
    :cond_0
    const-string/jumbo v9, "bearer_bitmask"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OPgetRow() bearerBitmask = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    .end local v1    # "bearerList":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string/jumbo v9, "mvno_type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, "mvno_type":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 330
    const-string/jumbo v9, "mvno_match_data"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "mvno_match_data":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 333
    const-string/jumbo v9, "mvno_type"

    invoke-virtual {v3, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v9, "mvno_match_data"

    invoke-virtual {v3, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OPgetRow() mvno_type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mvno_match_data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    .end local v6    # "mvno_match_data":Ljava/lang/String;
    .end local v7    # "mvno_type":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OPgetRow() map = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 344
    return-object v3

    .line 274
    .end local v0    # "bearerBitmask":I
    .end local v4    # "mcc":Ljava/lang/String;
    .end local v5    # "mnc":Ljava/lang/String;
    .end local v8    # "numeric":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OPgetRow() error message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 277
    return-object v11

    .line 322
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "bearerBitmask":I
    .restart local v4    # "mcc":Ljava/lang/String;
    .restart local v5    # "mnc":Ljava/lang/String;
    .restart local v8    # "numeric":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 323
    .restart local v2    # "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OPgetRow() error message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 340
    .restart local v2    # "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OPgetRow() error message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 9
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 350
    const/16 v5, 0xf

    new-array v4, v5, [Ljava/lang/String;

    .line 351
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    const-string/jumbo v5, "numeric"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 352
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const-string/jumbo v5, "mcc"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 353
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string/jumbo v5, "mnc"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 354
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const-string/jumbo v5, "apn"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "apn"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v4, v1

    .line 355
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string/jumbo v5, "proxy"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "proxy"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v4, v2

    .line 356
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const-string/jumbo v5, "port"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "port"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v1

    .line 357
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string/jumbo v5, "mmsproxy"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "mmsproxy"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v4, v2

    .line 358
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const-string/jumbo v5, "mmsport"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "mmsport"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    aput-object v5, v4, v1

    .line 359
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string/jumbo v5, "mmsc"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "mmsc"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    aput-object v5, v4, v2

    .line 360
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const-string/jumbo v5, "carrier_enabled"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 361
    const-string/jumbo v5, "carrier_enabled"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 362
    const-string/jumbo v5, "carrier_enabled"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "false"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 360
    if-eqz v5, :cond_7

    .line 363
    :cond_0
    const-string/jumbo v5, "0"

    .line 360
    :goto_6
    aput-object v5, v4, v1

    .line 364
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string/jumbo v5, "bearer"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "bearer"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_7
    aput-object v5, v4, v2

    .line 365
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const-string/jumbo v5, "mvno_type"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "mvno_type"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_8
    aput-object v5, v4, v1

    .line 366
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string/jumbo v5, "mvno_match_data"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 367
    const-string/jumbo v5, "mvno_match_data"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    :goto_9
    aput-object v5, v4, v2

    .line 368
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const-string/jumbo v5, "profile_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "profile_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_a
    aput-object v5, v4, v1

    .line 369
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string/jumbo v5, "type"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "type"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_b
    aput-object v5, v4, v2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v7, v4

    move v5, v6

    :goto_c
    if-ge v5, v7, :cond_d

    aget-object v3, v4, v5

    .line 374
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 354
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v3    # "s":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 355
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string/jumbo v5, ""

    goto/16 :goto_1

    .line 356
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    const-string/jumbo v5, ""

    goto/16 :goto_2

    .line 357
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    const-string/jumbo v5, ""

    goto/16 :goto_3

    .line 358
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    const-string/jumbo v5, ""

    goto/16 :goto_4

    .line 359
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_6
    const-string/jumbo v5, ""

    goto/16 :goto_5

    .line 363
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    const-string/jumbo v5, "1"

    goto/16 :goto_6

    .line 364
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_8
    const-string/jumbo v5, "0"

    goto/16 :goto_7

    .line 365
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    const-string/jumbo v5, ""

    goto/16 :goto_8

    .line 367
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_a
    const-string/jumbo v5, ""

    goto :goto_9

    .line 368
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_b
    const-string/jumbo v5, "0"

    goto :goto_a

    .line 369
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_c
    const-string/jumbo v5, ""

    goto :goto_b

    .line 376
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OPgetWhereArgs() whereArgs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 378
    return-object v4
.end method

.method private OPinsertApn(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, "mUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPselectConflictingRow(Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v1

    .line 443
    .local v1, "oldRow":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 447
    .local v0, "mUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPinsertApn() oldRow = null, rowID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 438
    .end local v0    # "mUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 455
    .restart local v0    # "mUri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v2, "OPinsertApn() oldRow = null, mUri = null "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    .local v0, "mUri":Landroid/net/Uri;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 465
    .local v0, "mUri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPinsertApn() oldRow.getCount() = 0, rowID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 480
    .end local v0    # "mUri":Landroid/net/Uri;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 473
    .restart local v0    # "mUri":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v2, "OPinsertApn() oldRow.getCount() = 0, mUri = null "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 478
    .local v0, "mUri":Landroid/net/Uri;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPinsertApn() there are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " old rows in db already. Do not insert APN !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private OPselectConflictingRow(Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 9
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 385
    const-string/jumbo v0, "numeric"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mcc"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mnc"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 392
    .local v2, "columns":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=? AND "

    sget-object v5, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPselectConflictingRow() where = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 402
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPselectConflictingRow() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " conflicting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "rows found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 408
    return-object v6

    .line 386
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPselectConflictingRow() called for non-conflicting row = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 387
    return-object v8

    .line 412
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 415
    .local v7, "idColumnIdx":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPselectConflictingRow() idColumnIdx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 416
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPselectConflictingRow() the first row Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 421
    :cond_2
    return-object v6

    .line 425
    .end local v7    # "idColumnIdx":I
    :cond_3
    const-string/jumbo v0, "OPselectConflictingRow() moveToFirst() failed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    :goto_0
    return-object v8

    .line 432
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPselectConflictingRow() Error - c is null; no matching row found for cv = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private OPupdateFindApn(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x1

    .line 516
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPselectConflictingRow(Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v0

    .line 517
    .local v0, "oldRow":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OPupdateFindApn() there is no row = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "in db."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OPupdateFindApn() there is one row in db. updateFindFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->updateFindFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 526
    sget-boolean v1, Lcom/android/internal/telephony/OPOnlineConfigApn;->updateFindFlag:Z

    if-nez v1, :cond_1

    .line 528
    sput-boolean v3, Lcom/android/internal/telephony/OPOnlineConfigApn;->updateFindFlag:Z

    .line 529
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/OPOnlineConfigApn;->whereArgsUpdateFind:[Ljava/lang/String;

    .line 536
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 534
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OPupdateFindApn() there are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " old rows in db. Do not update APN !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private OPupdateNewApn(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 544
    .local v0, "update_count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPupdateNewApn() updateFindFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/OPOnlineConfigApn;->updateFindFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 546
    sget-boolean v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->updateFindFlag:Z

    if-eqz v2, :cond_0

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=? AND "

    sget-object v4, Lcom/android/internal/telephony/OPOnlineConfigApn;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPupdateNewApn() where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/OPOnlineConfigApn;->whereArgsUpdateFind:[Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OPupdateNewApn() update_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 554
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->updateFindFlag:Z

    .line 555
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/telephony/OPOnlineConfigApn;->whereArgsUpdateFind:[Ljava/lang/String;

    .line 540
    return-void
.end method

.method private checkApnsVersion(Lorg/json/JSONArray;)Z
    .locals 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v5, 0x0

    .line 171
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 172
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "jsonApnsVersionName":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/OPOnlineConfigApn;->jsonApnsVersionInt:I

    .line 176
    const-string/jumbo v3, "persist.radio.apns_ver_updated"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionUpdated:I

    .line 177
    const-string/jumbo v3, "persist.radio.apns_ver_xml"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionInXML:I

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkApnsVersion() jsonApnsVersionInt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigApn;->jsonApnsVersionInt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", propApnsVersionUpdated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionUpdated:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " propApnsVersionInXML = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionInXML:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v3, "apns version"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const-string/jumbo v3, "checkApnsVersion() the first object in config.json is not apns version, do nothing !!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 185
    return v5

    .line 188
    :cond_0
    sget v3, Lcom/android/internal/telephony/OPOnlineConfigApn;->jsonApnsVersionInt:I

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionInXML:I

    if-gt v3, v4, :cond_1

    .line 190
    const-string/jumbo v3, "checkApnsVersion() version in config.json <= apns-conf.xml, do nothing !!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 191
    return v5

    .line 194
    :cond_1
    sget v3, Lcom/android/internal/telephony/OPOnlineConfigApn;->jsonApnsVersionInt:I

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigApn;->propApnsVersionUpdated:I

    if-gt v3, v4, :cond_2

    .line 196
    const-string/jumbo v3, "checkApnsVersion() version in config.json <= persist.radio.apns_ver_updated, do nothing !!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return v5

    .line 199
    .end local v1    # "jsonApnsVersionName":Ljava/lang/String;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkApnsVersion() checkApnsVersion error message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 201
    return v5

    .line 204
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonApnsVersionName":Ljava/lang/String;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 721
    const-string/jumbo v0, "OPOnlineConfigApn"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 725
    const-string/jumbo v0, "OPOnlineConfigApn"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method

.method private resolveOPOnlineConfigApnFromJSONandUpdateDb(Lorg/json/JSONArray;I)V
    .locals 7
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "reset_prop_version"    # I

    .prologue
    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveOPOnlineConfigApnFromJSON() start, reset_prop_version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 608
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 610
    const-string/jumbo v5, "persist.radio.apns_ver_updated"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_0
    if-nez p1, :cond_1

    .line 614
    const-string/jumbo v5, "resolveOPOnlineConfigApnFromJSON() jsonArray is null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 615
    return-void

    .line 618
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->checkApnsVersion(Lorg/json/JSONArray;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 620
    const-string/jumbo v5, "resolveOPOnlineConfigApnFromJSON() checkVersion() == false"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 621
    return-void

    .line 626
    :cond_2
    const/4 v1, 0x1

    .local v1, "indexJsonArray":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 628
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 629
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "action"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "jsonAction":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 633
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveOPOnlineConfigApnFromJSON() indexJsonArray = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", jsonAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 636
    const-string/jumbo v5, "target"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 638
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPcheckTarget(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 626
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPgetRow(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v4

    .line 649
    .local v4, "row":Landroid/content/ContentValues;
    if-eqz v4, :cond_3

    .line 651
    const-string/jumbo v5, "insert"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 653
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPinsertApn(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 678
    .end local v2    # "jsonAction":Ljava/lang/String;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveOPOnlineConfigApnFromJSON() error message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    return-void

    .line 655
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonAction":Ljava/lang/String;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "row":Landroid/content/ContentValues;
    :cond_5
    :try_start_2
    const-string/jumbo v5, "delete"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 657
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPdeleteApn(Landroid/content/ContentValues;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 681
    .end local v2    # "jsonAction":Ljava/lang/String;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "row":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    throw v5

    .line 659
    .restart local v2    # "jsonAction":Ljava/lang/String;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "row":Landroid/content/ContentValues;
    :cond_6
    :try_start_3
    const-string/jumbo v5, "update-find"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 661
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPupdateFindApn(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 663
    :cond_7
    const-string/jumbo v5, "update-new"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 665
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigApn;->OPupdateNewApn(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 669
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveOPOnlineConfigApnFromJSON() Do not support "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 675
    .end local v4    # "row":Landroid/content/ContentValues;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveOPOnlineConfigApnFromJSON() indexJsonArray = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", jsonAction = null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 684
    .end local v2    # "jsonAction":Ljava/lang/String;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveOPOnlineConfigApnFromJSON() end, set jsonApnsVersionInt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/OPOnlineConfigApn;->jsonApnsVersionInt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to PROP_APNS_VERSION_UPDATED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/OPOnlineConfigApn;->log(Ljava/lang/String;)V

    .line 685
    const-string/jumbo v5, "persist.radio.apns_ver_updated"

    sget v6, Lcom/android/internal/telephony/OPOnlineConfigApn;->jsonApnsVersionInt:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private triggerOPOnlineConfigApnLoading(I)V
    .locals 3
    .param p1, "reset_prop_version"    # I

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 691
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn;->mOPOnlineConfigApnHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    return-void
.end method
