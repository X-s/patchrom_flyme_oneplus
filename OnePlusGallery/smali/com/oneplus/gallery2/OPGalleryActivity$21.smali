.class Lcom/oneplus/gallery2/OPGalleryActivity$21;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$21;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$21;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$21;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$2300(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$2302(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 369
    return-void
.end method
