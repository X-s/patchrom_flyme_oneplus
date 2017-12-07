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
.field final synthetic val$client:Landroid/content/ContentProviderClient;

.field final synthetic val$ringtone_uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 0
    .param p1, "val$client"    # Landroid/content/ContentProviderClient;
    .param p2, "val$ringtone_uri"    # Landroid/net/Uri;

    .prologue
    .line 229
    iput-object p1, p0, Landroid/media/RingtoneManagerUtils$1;->val$client:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Landroid/media/RingtoneManagerUtils$1;->val$ringtone_uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Landroid/media/RingtoneManagerUtils;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RingtoneManagerUtils"

    const-string/jumbo v2, "validForSound: refreshing database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v1, p0, Landroid/media/RingtoneManagerUtils$1;->val$client:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/media/RingtoneManagerUtils$1;->val$ringtone_uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "Thread fail"

    invoke-static {v1, v0}, Landroid/media/RingtoneManagerUtils;->-wrap0(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
