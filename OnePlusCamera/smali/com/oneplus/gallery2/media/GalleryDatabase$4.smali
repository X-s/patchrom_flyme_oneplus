.class Lcom/oneplus/gallery2/media/GalleryDatabase$4;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;->invalidateExtraMediaInfo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$newMediaInfoRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$4;->val$newMediaInfoRef:Lcom/oneplus/base/Ref;

    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 1359
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    :goto_0
    return-void

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$4;->val$newMediaInfoRef:Lcom/oneplus/base/Ref;

    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-direct {v1, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
