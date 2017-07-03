.class public Lcom/oneplus/gallery/media/SimpleMediaDetails;
.super Ljava/lang/Object;
.source "SimpleMediaDetails.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaDetails;


# instance fields
.field private final m_Values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/MediaDetails$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/MediaDetails$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oneplus/gallery/media/SimpleMediaDetails;->m_Values:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public get(Lcom/oneplus/gallery/media/MediaDetails$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery/media/MediaDetails$Key",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "key":Lcom/oneplus/gallery/media/MediaDetails$Key;, "Lcom/oneplus/gallery/media/MediaDetails$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/media/SimpleMediaDetails;->m_Values:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/oneplus/gallery/media/SimpleMediaDetails;->m_Values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 42
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
