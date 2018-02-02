.class public Lcom/oneplus/gallery2/media/SimpleMediaList;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "SimpleMediaList.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/gallery2/media/Media;",
        ">;",
        "Lcom/oneplus/gallery2/media/MediaList;"
    }
.end annotation


# instance fields
.field private final m_Media:[Lcom/oneplus/gallery2/media/Media;


# direct methods
.method public varargs constructor <init>([Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oneplus/gallery2/media/SimpleMediaList;->m_Media:[Lcom/oneplus/gallery2/media/Media;

    .line 21
    return-void
.end method


# virtual methods
.method public get(I)Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SimpleMediaList;->m_Media:[Lcom/oneplus/gallery2/media/Media;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/SimpleMediaList;->get(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SimpleMediaList;->m_Media:[Lcom/oneplus/gallery2/media/Media;

    array-length v0, v0

    return v0
.end method
