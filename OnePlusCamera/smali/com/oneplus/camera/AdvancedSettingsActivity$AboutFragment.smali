.class public Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;
.super Landroid/app/Fragment;
.source "AdvancedSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutFragment"
.end annotation


# static fields
.field private static final COPYRIGHT_YEAR_TEXT:[C

.field private static final COPYRIGHT_YEAR_TEXT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXTRA_VERSION:Ljava/lang/String; = "VersionName"


# instance fields
.field private m_OnActionBarTitleChangedListener:Lcom/oneplus/camera/OnActionBarTitleChangedListener;

.field private m_VersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->COPYRIGHT_YEAR_TEXT:[C

    .line 156
    const-string/jumbo v0, "[\\d]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->COPYRIGHT_YEAR_TEXT_PATTERN:Ljava/util/regex/Pattern;

    .line 152
    return-void

    .line 155
    :array_0
    .array-data 2
        0x32s
        0x30s
        0x31s
        0x37s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_VersionName:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 185
    instance-of v0, p1, Lcom/oneplus/camera/OnActionBarTitleChangedListener;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lcom/oneplus/camera/OnActionBarTitleChangedListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_OnActionBarTitleChangedListener:Lcom/oneplus/camera/OnActionBarTitleChangedListener;

    .line 179
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 195
    const/high16 v7, 0x7f030000

    invoke-virtual {p1, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 198
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_OnActionBarTitleChangedListener:Lcom/oneplus/camera/OnActionBarTitleChangedListener;

    if-eqz v7, :cond_0

    .line 199
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_OnActionBarTitleChangedListener:Lcom/oneplus/camera/OnActionBarTitleChangedListener;

    const v8, 0x7f0b000c

    invoke-interface {v7, v8}, Lcom/oneplus/camera/OnActionBarTitleChangedListener;->onTitleChanged(I)V

    .line 202
    :cond_0
    const v7, 0x7f09000c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 203
    .local v5, "version":Landroid/widget/TextView;
    if-eqz p3, :cond_1

    .line 204
    const-string/jumbo v7, "VersionName"

    iget-object v8, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_VersionName:Ljava/lang/String;

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_VersionName:Ljava/lang/String;

    .line 205
    :cond_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_VersionName:Ljava/lang/String;

    aput-object v8, v7, v9

    const v8, 0x7f0b005f

    invoke-virtual {p0, v8, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const v7, 0x7f0b0061

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, "copyrightText":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->COPYRIGHT_YEAR_TEXT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 210
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 213
    .local v1, "charIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->COPYRIGHT_YEAR_TEXT:[C

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 214
    sget-object v7, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->COPYRIGHT_YEAR_TEXT:[C

    aget-char v7, v7, v3

    invoke-virtual {v2, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 213
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "charIndex":I
    .end local v3    # "i":I
    :cond_2
    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    new-instance v7, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$1;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    const v7, 0x7f09000d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, "agreement":Landroid/widget/TextView;
    new-instance v7, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$2;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-object v6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    const-string/jumbo v0, "VersionName"

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;->m_VersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    return-void
.end method
