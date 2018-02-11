.class public Lcom/oneplus/settings/apploader/OPApplicationLoader$SelectedAppComparetor;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectedAppComparetor"
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
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$SelectedAppComparetor;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I
    .locals 1
    .param p1, "lhs"    # Lcom/oneplus/settings/better/OPAppModel;
    .param p2, "rhs"    # Lcom/oneplus/settings/better/OPAppModel;

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x1

    return v0

    .line 270
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 275
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 267
    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/settings/better/OPAppModel;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/apploader/OPApplicationLoader$SelectedAppComparetor;->compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I

    move-result v0

    return v0
.end method
