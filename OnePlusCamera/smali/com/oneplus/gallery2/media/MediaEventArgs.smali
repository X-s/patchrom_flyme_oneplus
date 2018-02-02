.class public Lcom/oneplus/gallery2/media/MediaEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field private final m_Flags:I

.field private final m_Media:Lcom/oneplus/gallery2/media/Media;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaEventArgs;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 23
    iput p2, p0, Lcom/oneplus/gallery2/media/MediaEventArgs;->m_Flags:I

    .line 24
    return-void
.end method


# virtual methods
.method public final getFlags()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaEventArgs;->m_Flags:I

    return v0
.end method

.method public final getMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaEventArgs;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method
