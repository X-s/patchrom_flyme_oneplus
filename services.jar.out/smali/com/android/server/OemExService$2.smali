.class Lcom/android/server/OemExService$2;
.super Ljava/lang/Object;
.source "OemExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemExService;->startApkInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->installAPKs()V
    invoke-static {v1}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OemExService"

    const-string v2, "installAPKs error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
