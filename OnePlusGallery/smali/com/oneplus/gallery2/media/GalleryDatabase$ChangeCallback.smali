.class public abstract Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChangeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 475
    .local p0, "this":Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;, "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<TTValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAdded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;, "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<TTValue;>;"
    .local p1, "value":Ljava/lang/Object;, "TTValue;"
    return-void
.end method

.method onDeleted(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;, "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<TTValue;>;"
    .local p1, "value":Ljava/lang/Object;, "TTValue;"
    return-void
.end method

.method onUpdated(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;, "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<TTValue;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p2, "newValue":Ljava/lang/Object;, "TTValue;"
    return-void
.end method
