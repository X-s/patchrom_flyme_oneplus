.class Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->replaceMedia(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$newMedia:Lcom/oneplus/camera/media/MediaInfo;

.field final synthetic val$oldMedia:Lcom/oneplus/camera/media/MediaInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p2, "val$oldMedia"    # Lcom/oneplus/camera/media/MediaInfo;
    .param p3, "val$newMedia"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;->val$oldMedia:Lcom/oneplus/camera/media/MediaInfo;

    iput-object p3, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;->val$newMedia:Lcom/oneplus/camera/media/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;->val$oldMedia:Lcom/oneplus/camera/media/MediaInfo;

    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;->val$newMedia:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->replace(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)Z

    .line 444
    return-void
.end method
