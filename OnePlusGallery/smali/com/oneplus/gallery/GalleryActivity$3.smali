.class final Lcom/oneplus/gallery/GalleryActivity$3;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    # invokes: Lcom/oneplus/gallery/GalleryActivity;->checkInstances(J)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->access$000(J)V

    .line 110
    return-void
.end method
