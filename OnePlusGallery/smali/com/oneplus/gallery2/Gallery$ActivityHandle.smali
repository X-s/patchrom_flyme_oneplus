.class final Lcom/oneplus/gallery2/Gallery$ActivityHandle;
.super Lcom/oneplus/base/Handle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityHandle"
.end annotation


# instance fields
.field public final activity:Lcom/oneplus/gallery2/GalleryActivity;

.field final synthetic this$0:Lcom/oneplus/gallery2/Gallery;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 1
    .param p2, "activity"    # Lcom/oneplus/gallery2/GalleryActivity;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->this$0:Lcom/oneplus/gallery2/Gallery;

    .line 299
    const-string v0, "AttachedActivity"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 300
    iput-object p2, p0, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 301
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery$ActivityHandle;->this$0:Lcom/oneplus/gallery2/Gallery;

    # invokes: Lcom/oneplus/gallery2/Gallery;->detachActivity(Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/Gallery;->access$700(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$ActivityHandle;)V

    .line 308
    return-void
.end method
