.class final Lcom/oneplus/gallery2/OPGalleryActivity$1;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 141
    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->releaseSharedMediaSetList()V
    invoke-static {}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$000()V

    .line 142
    return-void
.end method
