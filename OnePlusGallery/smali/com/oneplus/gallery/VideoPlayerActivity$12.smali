.class Lcom/oneplus/gallery/VideoPlayerActivity$12;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
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
    .line 538
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$12;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$12;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->onPlayButtonClick()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$1900(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    .line 543
    return-void
.end method
