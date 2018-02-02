.class public final Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;
.super Lcom/oneplus/camera/ui/menu/MenuItem;
.source "ResolutionMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-util-AspectRatioSwitchesValues:[I

.field public static final PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private m_ItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final m_ResoltuonSettingKey:Ljava/lang/String;

.field private final m_ResolutionStringFormat:Ljava/lang/String;

.field private m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

.field private final m_Resolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Settings:Lcom/oneplus/base/Settings;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResoltuonSettingKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Lcom/oneplus/base/Settings;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-util-AspectRatioSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->-com-oneplus-util-AspectRatioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->-com-oneplus-util-AspectRatioSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/util/AspectRatio;->values()[Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x10:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_3x2:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->-com-oneplus-util-AspectRatioSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 26
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Resolution"

    const-class v2, Lcom/oneplus/camera/media/Resolution;

    const-class v3, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oneplus/base/Settings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settingsKey"    # Ljava/lang/String;
    .param p4, "settings"    # Lcom/oneplus/base/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Settings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    invoke-direct {p0}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    .line 38
    new-instance v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;-><init>(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 50
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResoltuonSettingKey:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Settings:Lcom/oneplus/base/Settings;

    .line 54
    const v0, 0x7f0b0006

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionStringFormat:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;
    .locals 6
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string/jumbo v2, ""

    return-object v2

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getMegaPixels()I

    move-result v0

    .line 65
    .local v0, "mp":I
    invoke-static {}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->-getcom-oneplus-util-AspectRatioSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 77
    const-string/jumbo v1, ""

    .line 80
    .local v1, "ratio":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionStringFormat:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 68
    .end local v1    # "ratio":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v1, "16:9"

    .restart local v1    # "ratio":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v1    # "ratio":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "4:3"

    .restart local v1    # "ratio":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v1    # "ratio":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "1:1"

    .restart local v1    # "ratio":Ljava/lang/String;
    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z
    .locals 2
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 105
    :goto_0
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_1
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getResolutionWindow()Lcom/oneplus/camera/ui/menu/ResolutionWindow;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    return-object v0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 89
    check-cast p2, Lcom/oneplus/camera/media/Resolution;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->setResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z

    move-result v0

    return v0

    .line 90
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final showResolutionSelector()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 113
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showResolutionSelector() - No resolution list"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 120
    :cond_1
    const/4 v3, 0x0

    .line 121
    .local v3, "selectedID":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 124
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    .line 125
    .local v2, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    move v3, v0

    .line 127
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_3
    new-instance v5, Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v5, v4, v1, v3}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    .line 131
    iget-object v5, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v6, 0x7f090013

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x51

    invoke-virtual {v5, v4, v6, v7, v7}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->showAtLocation(Landroid/view/View;III)V

    .line 132
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->setFocusable(Z)V

    .line 133
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    iget-object v5, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    return-void
.end method
