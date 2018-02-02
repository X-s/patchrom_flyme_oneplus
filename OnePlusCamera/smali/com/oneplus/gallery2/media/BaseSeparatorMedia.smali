.class public abstract Lcom/oneplus/gallery2/media/BaseSeparatorMedia;
.super Lcom/oneplus/gallery2/media/BaseDecorationMedia;
.source "BaseSeparatorMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/SeparatorMedia;


# instance fields
.field private final m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseDecorationMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 23
    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 32
    return-void
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseObjectAdapter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 48
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/oneplus/base/PropertyKey;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
