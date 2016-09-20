.class Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/oneplus/camera/media/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$media:Lcom/oneplus/camera/media/MediaInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;->this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;->val$media:Lcom/oneplus/camera/media/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;->this$0:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;->val$media:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->add(Lcom/oneplus/camera/media/MediaInfo;)Z

    .line 155
    return-void
.end method
