.class Lcom/oneplus/screenshot/LongshotService$Finisher;
.super Ljava/lang/Object;
.source "LongshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/LongshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finisher"
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

.field final synthetic this$0:Lcom/oneplus/screenshot/LongshotService;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/LongshotService;Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 120
    iput-object p2, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 121
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    # getter for: Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Finisher.run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotCallback;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
