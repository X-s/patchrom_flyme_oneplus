.class final Landroid/media/RingtoneManagerUtils$1;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RingtoneManagerUtils;->validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$ringtone_uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Landroid/media/RingtoneManagerUtils$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/media/RingtoneManagerUtils$1;->val$ringtone_uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 169
    :try_start_0
    # getter for: Landroid/media/RingtoneManagerUtils;->DBG:Z
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RingtoneManagerUtils"

    const-string/jumbo v2, "validForSound: refreshing database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v1, p0, Landroid/media/RingtoneManagerUtils$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/RingtoneManagerUtils$1;->val$ringtone_uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v1, "RingtoneManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
