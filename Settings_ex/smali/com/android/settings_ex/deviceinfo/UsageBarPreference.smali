.class public Lcom/android/settings_ex/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private mChart:Lcom/android/settings_ex/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryDetail:Ljava/lang/String;

.field private mMemoryStorage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings_ex/deviceinfo/PercentageBarChart;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mMemoryDetail:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 56
    const v0, 0x7f0400a3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2
    .param p1, "order"    # I
    .param p2, "percentage"    # F
    .param p3, "color"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings_ex/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings_ex/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->invalidate()V

    .line 93
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 68
    const v0, 0x7f0f01af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings_ex/deviceinfo/PercentageBarChart;

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings_ex/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 72
    const v0, 0x7f0f01b0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mMemoryStorage:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mMemoryDetail:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mMemoryStorage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mMemoryDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMemoryDetail(Ljava/lang/String;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mMemoryDetail:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->mMemoryStorage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 87
    return-void
.end method
