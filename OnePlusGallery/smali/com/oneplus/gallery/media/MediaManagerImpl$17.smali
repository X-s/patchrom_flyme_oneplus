.class Lcom/oneplus/gallery/media/MediaManagerImpl$17;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainGroupMedia(JJLjava/lang/String;)Lcom/oneplus/gallery/media/GroupMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$groupMediaRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 3121
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$17;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$17;->val$groupMediaRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 3125
    if-nez p3, :cond_0

    .line 3128
    :goto_0
    return-void

    .line 3127
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$17;->val$groupMediaRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia;

    invoke-interface {v0, p3}, Lcom/oneplus/gallery/media/GroupMedia;->addSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    goto :goto_0
.end method
