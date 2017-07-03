.class Lcom/oneplus/gallery2/SingleMediaActivity$2;
.super Ljava/lang/Object;
.source "SingleMediaActivity.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/SingleMediaActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/SingleMediaActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/SingleMediaActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/gallery2/SingleMediaActivity$2;->this$0:Lcom/oneplus/gallery2/SingleMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity$2;->this$0:Lcom/oneplus/gallery2/SingleMediaActivity;

    # setter for: Lcom/oneplus/gallery2/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;
    invoke-static {v0, p4}, Lcom/oneplus/gallery2/SingleMediaActivity;->access$002(Lcom/oneplus/gallery2/SingleMediaActivity;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/media/Media;

    .line 110
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity$2;->this$0:Lcom/oneplus/gallery2/SingleMediaActivity;

    # invokes: Lcom/oneplus/gallery2/SingleMediaActivity;->callOnMediaObtained()V
    invoke-static {v0}, Lcom/oneplus/gallery2/SingleMediaActivity;->access$100(Lcom/oneplus/gallery2/SingleMediaActivity;)V

    .line 111
    return-void
.end method
