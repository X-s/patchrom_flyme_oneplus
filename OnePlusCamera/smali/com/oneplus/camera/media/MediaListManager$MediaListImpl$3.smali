.class Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->clearMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;->this$1:Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    invoke-static {v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->-wrap2(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    .line 218
    return-void
.end method
