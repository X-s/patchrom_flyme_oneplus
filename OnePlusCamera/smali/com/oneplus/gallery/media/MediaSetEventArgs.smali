.class public Lcom/oneplus/gallery/media/MediaSetEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MediaSetEventArgs.java"


# instance fields
.field private final m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaSetEventArgs;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 21
    return-void
.end method


# virtual methods
.method public getMediaSet()Lcom/oneplus/gallery/media/MediaSet;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaSetEventArgs;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    return-object v0
.end method
