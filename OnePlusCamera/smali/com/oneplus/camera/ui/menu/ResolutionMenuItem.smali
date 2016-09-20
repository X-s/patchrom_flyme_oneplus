.class public final Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;
.super Lcom/oneplus/camera/ui/menu/MenuItem;
.source "ResolutionMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$2;
    }
.end annotation


# static fields
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

.field private final m_Settings:Lcom/oneplus/camera/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 30
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Resolution"

    const-class v2, Lcom/oneplus/camera/media/Resolution;

    const-class v3, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oneplus/camera/Settings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settingsKey"    # Ljava/lang/String;
    .param p4, "settings"    # Lcom/oneplus/camera/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/Settings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    invoke-direct {p0}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    .line 42
    new-instance v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$1;-><init>(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 54
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResoltuonSettingKey:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Settings:Lcom/oneplus/camera/Settings;

    .line 58
    const v0, 0x7f090005

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionStringFormat:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResoltuonSettingKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;)Lcom/oneplus/camera/Settings;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Settings:Lcom/oneplus/camera/Settings;

    return-object v0
.end method

.method private getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;
    .locals 6
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v2, ""

    .line 84
    :goto_0
    return-object v2

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getMegaPixels()I

    move-result v0

    .line 69
    .local v0, "mp":I
    sget-object v2, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem$2;->$SwitchMap$com$oneplus$util$AspectRatio:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 81
    const-string v1, ""

    .line 84
    .local v1, "ratio":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionStringFormat:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 72
    .end local v1    # "ratio":Ljava/lang/String;
    :pswitch_0
    const-string v1, "16:9"

    .line 73
    .restart local v1    # "ratio":Ljava/lang/String;
    goto :goto_1

    .line 75
    .end local v1    # "ratio":Ljava/lang/String;
    :pswitch_1
    const-string v1, "4:3"

    .line 76
    .restart local v1    # "ratio":Ljava/lang/String;
    goto :goto_1

    .line 78
    .end local v1    # "ratio":Ljava/lang/String;
    :pswitch_2
    const-string v1, "1:1"

    .line 79
    .restart local v1    # "ratio":Ljava/lang/String;
    goto :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z
    .locals 2
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 101
    if-eqz p1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_1
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 109
    :goto_1
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_2
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public getResolutionWindow()Lcom/oneplus/camera/ui/menu/ResolutionWindow;
    .locals 1

    .prologue
    .line 142
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
    .line 92
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 93
    check-cast p2, Lcom/oneplus/camera/media/Resolution;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->setResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final showResolutionSelector()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 117
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->TAG:Ljava/lang/String;

    const-string v5, "showResolutionSelector() - No resolution list"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v3, 0x0

    .line 125
    .local v3, "selectedID":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 128
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Resolutions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    .line 129
    .local v2, "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    move v3, v0

    .line 131
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->getDisplayString(Lcom/oneplus/camera/media/Resolution;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v2    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_3
    new-instance v5, Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v5, v4, v1, v3}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    .line 135
    iget-object v5, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_Context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v6, 0x7f0b000a

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x51

    invoke-virtual {v5, v4, v6, v7, v7}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->showAtLocation(Landroid/view/View;III)V

    .line 136
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->setFocusable(Z)V

    .line 137
    iget-object v4, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ResolutionWindow:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    iget-object v5, p0, Lcom/oneplus/camera/ui/menu/ResolutionMenuItem;->m_ItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
