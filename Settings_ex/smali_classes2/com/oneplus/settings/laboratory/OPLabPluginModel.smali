.class public Lcom/oneplus/settings/laboratory/OPLabPluginModel;
.super Ljava/lang/Object;
.source "OPLabPluginModel.java"


# instance fields
.field private featureKey:Ljava/lang/String;

.field private featureSummary:Ljava/lang/String;

.field private featureTitle:Ljava/lang/String;

.field private multiToggleName:[Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private toggleCount:I


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
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiToggleName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->multiToggleName:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleCount()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->toggleCount:I

    return v0
.end method

.method public setFeatureKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureKey"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setFeatureSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureSummary"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setFeatureTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureTitle"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMultiToggleName([Ljava/lang/String;)V
    .locals 0
    .param p1, "multiToggleName"    # [Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->multiToggleName:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->packageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setToggleCount(I)V
    .locals 0
    .param p1, "toggleCount"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->toggleCount:I

    .line 26
    return-void
.end method
