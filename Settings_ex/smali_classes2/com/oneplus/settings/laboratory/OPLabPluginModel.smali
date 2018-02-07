.class public Lcom/oneplus/settings/laboratory/OPLabPluginModel;
.super Ljava/lang/Object;
.source "OPLabPluginModel.java"


# instance fields
.field private featureKey:Ljava/lang/String;

.field private featureSummary:Ljava/lang/String;

.field private featureTitle:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setFeatureKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureKey"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setFeatureSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureSummary"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFeatureTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureTitle"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->packageName:Ljava/lang/String;

    .line 16
    return-void
.end method
