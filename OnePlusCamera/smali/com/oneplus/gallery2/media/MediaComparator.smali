.class public abstract Lcom/oneplus/gallery2/media/MediaComparator;
.super Ljava/lang/Object;
.source "MediaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/gallery2/media/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILE_PATH_ASC:Lcom/oneplus/gallery2/media/MediaComparator;

.field public static final TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;


# instance fields
.field private final m_EffectiveMediaUpdateFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/oneplus/gallery2/media/MediaComparator$1;

    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_PATH_CHANGED:I

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator$1;-><init>(I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaComparator;->FILE_PATH_ASC:Lcom/oneplus/gallery2/media/MediaComparator;

    .line 46
    new-instance v0, Lcom/oneplus/gallery2/media/MediaComparator$2;

    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_TAKEN_TIME_CHANGED:I

    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_PATH_CHANGED:I

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator$2;-><init>(I)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    .line 81
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/oneplus/gallery2/media/MediaComparator;->m_EffectiveMediaUpdateFlags:I

    .line 95
    return-void
.end method


# virtual methods
.method public final getEffectiveMediaUpdateFlags()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaComparator;->m_EffectiveMediaUpdateFlags:I

    return v0
.end method
