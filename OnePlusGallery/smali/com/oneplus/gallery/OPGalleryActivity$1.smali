.class final Lcom/oneplus/gallery/OPGalleryActivity$1;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 130
    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->releaseSharedMediaSetList()V
    invoke-static {}, Lcom/oneplus/gallery/OPGalleryActivity;->access$000()V

    .line 131
    return-void
.end method
