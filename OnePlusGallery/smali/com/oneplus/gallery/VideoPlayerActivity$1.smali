.class Lcom/oneplus/gallery/VideoPlayerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$1;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$1;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$000(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent: "

    const-string v2, ", finish itself"

    invoke-static {v0, v1, p2, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$1;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->finish()V

    .line 110
    return-void
.end method
