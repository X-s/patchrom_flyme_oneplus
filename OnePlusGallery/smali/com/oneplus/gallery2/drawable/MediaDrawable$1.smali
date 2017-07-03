.class Lcom/oneplus/gallery2/drawable/MediaDrawable$1;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "MediaDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/drawable/MediaDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$1;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    # invokes: Lcom/oneplus/gallery2/drawable/MediaDrawable;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    invoke-static {v0, p2, p3}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->access$000(Lcom/oneplus/gallery2/drawable/MediaDrawable;Lcom/oneplus/gallery2/media/Media;I)V

    .line 41
    return-void
.end method
