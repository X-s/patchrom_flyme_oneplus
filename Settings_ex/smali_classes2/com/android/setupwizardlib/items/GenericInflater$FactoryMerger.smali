.class Lcom/android/setupwizardlib/items/GenericInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "GenericInflater.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/GenericInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/items/GenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/setupwizardlib/items/GenericInflater$Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mF1:Lcom/android/setupwizardlib/items/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/setupwizardlib/items/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mF2:Lcom/android/setupwizardlib/items/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/setupwizardlib/items/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/items/GenericInflater$Factory;Lcom/android/setupwizardlib/items/GenericInflater$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/setupwizardlib/items/GenericInflater$Factory",
            "<TT;>;",
            "Lcom/android/setupwizardlib/items/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/android/setupwizardlib/items/GenericInflater$FactoryMerger;, "Lcom/android/setupwizardlib/items/GenericInflater<TT;>.FactoryMerger<TT;>;"
    .local p1, "f1":Lcom/android/setupwizardlib/items/GenericInflater$Factory;, "Lcom/android/setupwizardlib/items/GenericInflater$Factory<TT;>;"
    .local p2, "f2":Lcom/android/setupwizardlib/items/GenericInflater$Factory;, "Lcom/android/setupwizardlib/items/GenericInflater$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/setupwizardlib/items/GenericInflater$FactoryMerger;->mF1:Lcom/android/setupwizardlib/items/GenericInflater$Factory;

    .line 86
    iput-object p2, p0, Lcom/android/setupwizardlib/items/GenericInflater$FactoryMerger;->mF2:Lcom/android/setupwizardlib/items/GenericInflater$Factory;

    .line 84
    return-void
.end method


# virtual methods
.method public onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/android/setupwizardlib/items/GenericInflater$FactoryMerger;, "Lcom/android/setupwizardlib/items/GenericInflater<TT;>.FactoryMerger<TT;>;"
    iget-object v1, p0, Lcom/android/setupwizardlib/items/GenericInflater$FactoryMerger;->mF1:Lcom/android/setupwizardlib/items/GenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/setupwizardlib/items/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    return-object v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/items/GenericInflater$FactoryMerger;->mF2:Lcom/android/setupwizardlib/items/GenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/setupwizardlib/items/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
