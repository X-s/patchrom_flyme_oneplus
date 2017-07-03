.class public Lcom/netease/filterenginelibrary/a/g;
.super Landroid/os/AsyncTask;


# static fields
.field private static final e:Ljava/lang/String; = "FilterEngineSDK"

.field private static final f:Ljava/lang/String; = "df93hdjuSGeihu8joNa3dv6"


# instance fields
.field private a:Lcom/netease/filterenginelibrary/gpuimage/aa;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;

.field private d:Lcom/netease/filterenginelibrary/utils/OnRenderingListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/filterenginelibrary/gpuimage/aa;Lcom/netease/filterenginelibrary/utils/OnRenderingListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/netease/filterenginelibrary/a/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/a/g;->a:Lcom/netease/filterenginelibrary/gpuimage/aa;

    iput-object p3, p0, Lcom/netease/filterenginelibrary/a/g;->d:Lcom/netease/filterenginelibrary/utils/OnRenderingListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/a/g;->c:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)J
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "register_time"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 5

    const-string v0, "SELECT key , limited_time FROM app_key_list"

    new-instance v1, Lcom/netease/filterenginelibrary/a/f;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/a/g;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/netease/filterenginelibrary/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/a/f;->a()V

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/a/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/a/g;->c:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/filterenginelibrary/a/a;

    invoke-direct {v0}, Lcom/netease/filterenginelibrary/a/a;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "df93hdjuSGeihu8joNa3dv6"

    invoke-static {v4}, Lcom/netease/filterenginelibrary/gpuimage/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/filterenginelibrary/a/a;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "df93hdjuSGeihu8joNa3dv6"

    invoke-static {v4}, Lcom/netease/filterenginelibrary/gpuimage/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/ai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/filterenginelibrary/a/a;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/filterenginelibrary/a/g;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/a/g;->b:Landroid/content/Context;

    const-string v3, "com.filterenginelibrary.registertime"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "app_key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/a/g;->a(Landroid/content/SharedPreferences;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/netease/filterenginelibrary/a/g;->a:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v0, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    move v2, v1

    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/netease/filterenginelibrary/a/g;->d:Lcom/netease/filterenginelibrary/utils/OnRenderingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/a/g;->d:Lcom/netease/filterenginelibrary/utils/OnRenderingListener;

    invoke-interface {v0, v2}, Lcom/netease/filterenginelibrary/utils/OnRenderingListener;->onRender(Z)V

    const-string v0, "FilterEngineSDK"

    const-string v1, "onPreparation callback finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/a/a;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/a/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/a/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "0000"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/filterenginelibrary/a/g;->a:Lcom/netease/filterenginelibrary/gpuimage/aa;

    invoke-virtual {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/aa;->a(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0

    :pswitch_0
    const-string v0, "FilterEngineSDK"

    const-string v1, "key is valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    const-string v0, "FilterEngineSDK"

    const-string v1, "key is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    const-string v0, "FilterEngineSDK"

    const-string v1, "key had expired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/a/g;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/a/g;->a(Ljava/util/List;)V

    return-void
.end method
