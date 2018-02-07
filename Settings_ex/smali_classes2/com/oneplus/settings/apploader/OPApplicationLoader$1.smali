.class final Lcom/oneplus/settings/apploader/OPApplicationLoader$1;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/settings/better/OPAppModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->sCollator:Ljava/text/Collator;

    .line 371
    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I
    .locals 4
    .param p1, "object1"    # Lcom/oneplus/settings/better/OPAppModel;
    .param p2, "object2"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 378
    .local v0, "compareResult":I
    if-eqz v0, :cond_0

    .line 379
    return v0

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 383
    if-eqz v0, :cond_1

    .line 384
    return v0

    .line 386
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v1

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 375
    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/settings/better/OPAppModel;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;->compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I

    move-result v0

    return v0
.end method
