.class public abstract Lcom/oneplus/gallery/media/MediaComparator;
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
        "Lcom/oneplus/gallery/media/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;


# instance fields
.field private final m_ContentProviderSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/oneplus/gallery/media/MediaComparator$1;

    const-string/jumbo v1, "datetaken DESC ,_data DESC"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/media/MediaComparator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaComparator;->m_ContentProviderSortOrder:Ljava/lang/String;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaComparator;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaComparator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getContentProviderSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaComparator;->m_ContentProviderSortOrder:Ljava/lang/String;

    return-object v0
.end method
