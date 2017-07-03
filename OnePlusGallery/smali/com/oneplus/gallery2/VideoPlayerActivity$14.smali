.class Lcom/oneplus/gallery2/VideoPlayerActivity$14;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$14;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$14;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/VideoPlayerActivity;->finish()V

    .line 584
    return-void
.end method
