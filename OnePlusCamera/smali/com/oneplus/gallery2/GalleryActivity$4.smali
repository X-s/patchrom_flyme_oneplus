.class Lcom/oneplus/gallery2/GalleryActivity$4;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryActivity$4;->this$0:Lcom/oneplus/gallery2/GalleryActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryActivity$4;->this$0:Lcom/oneplus/gallery2/GalleryActivity;

    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryActivity$4;->this$0:Lcom/oneplus/gallery2/GalleryActivity;

    invoke-static {v1}, Lcom/oneplus/gallery2/GalleryActivity;->access$1(Lcom/oneplus/gallery2/GalleryActivity;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->access$2(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/base/Handle;)V

    .line 118
    return-void
.end method
