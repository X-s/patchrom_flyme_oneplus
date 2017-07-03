.class Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;
.super Ljava/lang/Object;
.source "VideoMediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseVideoFile(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

.field final synthetic val$task:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;->this$0:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;->val$task:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;->this$0:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;->val$task:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    # invokes: Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->onVideoFileParsed(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->access$500(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    .line 403
    return-void
.end method
