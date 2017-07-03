.class Lcom/oneplus/gallery/VideoPlayerActivity$20;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;->showDetails()V
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
    .line 1216
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$20;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$20;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$2902(Lcom/oneplus/gallery/VideoPlayerActivity;Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery/MediaDetailsDialog;

    .line 1221
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$20;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # getter for: Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$3000(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    return-void
.end method
