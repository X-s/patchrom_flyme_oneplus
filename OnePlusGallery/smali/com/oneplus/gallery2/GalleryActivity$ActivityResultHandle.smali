.class final Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;
.super Lcom/oneplus/base/Handle;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityResultHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    .prologue
    .line 165
    const-string v0, "ActivityResult"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery2/GalleryActivity$ActivityResultCallback;

    .line 167
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 172
    return-void
.end method
