.class public abstract Lcom/oneplus/gallery2/media/MediaSetComparator;
.super Ljava/lang/Object;
.source "MediaSetComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

.field private static final DEFAULT_MEDIA_SET_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final m_ReferencedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSetComparator$1;

    new-array v1, v5, [Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaSetComparator$1;-><init>([Lcom/oneplus/base/PropertyKey;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/oneplus/gallery2/media/AllMediaMediaSet;

    aput-object v1, v0, v3

    const-class v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    aput-object v1, v0, v4

    const-class v1, Lcom/oneplus/gallery2/media/SelfieMediaSet;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/oneplus/gallery2/media/ScreenshotMediaSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT_MEDIA_SET_ORDER:Ljava/util/List;

    return-void
.end method

.method protected varargs constructor <init>([Lcom/oneplus/base/PropertyKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "refProperties":[Lcom/oneplus/base/PropertyKey;, "[Lcom/oneplus/base/PropertyKey<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSetComparator;->m_ReferencedProperties:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT_MEDIA_SET_ORDER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compareMediaAddedTimeDesc(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compareNamesAsc(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I

    move-result v0

    return v0
.end method

.method private static compareMediaAddedTimeDesc(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I
    .locals 5
    .param p0, "lhs"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p1, "rhs"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 85
    sget-object v4, Lcom/oneplus/gallery2/media/MediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p0, v4}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 86
    .local v0, "leftTime":J
    sget-object v4, Lcom/oneplus/gallery2/media/MediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 87
    .local v2, "rightTime":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 88
    const/4 v4, -0x1

    .line 91
    :goto_0
    return v4

    .line 89
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 90
    const/4 v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static compareNamesAsc(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/MediaSet;)I
    .locals 3
    .param p0, "lhs"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p1, "rhs"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 98
    sget-object v2, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p0, v2}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "leftName":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .local v1, "rightName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 108
    :goto_0
    return v2

    .line 104
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 106
    :cond_1
    if-eqz v1, :cond_2

    .line 107
    const/4 v2, 0x1

    goto :goto_0

    .line 108
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getReferencedProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSetComparator;->m_ReferencedProperties:Ljava/util/List;

    return-object v0
.end method
