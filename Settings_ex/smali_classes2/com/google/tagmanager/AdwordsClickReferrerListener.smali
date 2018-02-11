.class Lcom/google/tagmanager/AdwordsClickReferrerListener;
.super Ljava/lang/Object;
.source "AdwordsClickReferrerListener.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$Listener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/tagmanager/AdwordsClickReferrerListener;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public changed(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "gtm.url"

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 29
    :goto_0
    if-nez v0, :cond_4

    .line 30
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "gtm"

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 26
    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "referrer"

    .line 33
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-nez v0, :cond_5

    .line 37
    :goto_1
    return-void

    .line 35
    :cond_5
    iget-object v1, p0, Lcom/google/tagmanager/AdwordsClickReferrerListener;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/tagmanager/InstallReferrerUtil;->addClickReferrer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
