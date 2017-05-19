.class final Landroid/media/RingtoneManagerUtils$2;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RingtoneManagerUtils;->ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Landroid/content/ContentProviderClient;

.field final synthetic val$newFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Landroid/media/RingtoneManagerUtils$2;->val$client:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Landroid/media/RingtoneManagerUtils$2;->val$newFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 554
    :try_start_0
    iget-object v1, p0, Landroid/media/RingtoneManagerUtils$2;->val$client:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/RingtoneManagerUtils$2;->val$newFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Thread fail"

    # invokes: Landroid/media/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Landroid/media/RingtoneManagerUtils;->access$100(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
