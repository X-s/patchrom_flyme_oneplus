.class public Lcom/oneplus/camera/ui/menu/MenuListView;
.super Landroid/widget/ListView;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;,
        Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;
    }
.end annotation


# instance fields
.field private final m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

.field private final m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_MenuItemViewResId:I

.field private m_MenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OnInternalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const v0, 0x7f030006

    iput v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItemViewResId:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$1;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 46
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$2;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 54
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$3;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 62
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$4;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 73
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$5;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnInternalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 131
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuListView$1;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    .line 132
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnInternalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/MenuListView;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/menu/MenuListView;->onMenuItemCheckedChanged(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/menu/MenuListView;)Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/MenuListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/menu/MenuListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/MenuListView;
    .param p1, "x1"    # Landroid/widget/AdapterView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/camera/ui/menu/MenuListView;->onItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/menu/MenuListView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/MenuListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/menu/MenuListView;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/MenuListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/menu/MenuListView;->getMenuItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/MenuListView;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/menu/MenuListView;->onMenuItemSwitchChanged(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;Z)V

    return-void
.end method

.method private attachToMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 142
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 143
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 144
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 145
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 147
    :cond_0
    return-void
.end method

.method private detachFromMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 155
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 156
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 157
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 158
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 160
    :cond_0
    return-void
.end method

.method private getMenuItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 168
    if-nez p2, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/menu/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItemViewResId:I

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 171
    new-instance v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    invoke-direct {v2, v6}, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView$1;)V

    .line 172
    .local v2, "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    const v3, 0x7f0b0012

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->titleTextView:Landroid/widget/TextView;

    .line 173
    const v3, 0x7f0b0013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    .line 174
    const v3, 0x7f0b0014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    .line 175
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    .line 177
    move-object v0, p2

    .line 178
    .local v0, "itemView":Landroid/view/View;
    sget v3, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    if-ne v3, v5, :cond_0

    .line 180
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    const v4, 0x7f0200b9

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 181
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    const v4, 0x7f0200b7

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 183
    :cond_0
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    new-instance v4, Lcom/oneplus/camera/ui/menu/MenuListView$6;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/camera/ui/menu/MenuListView$6;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    .end local v0    # "itemView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    :goto_0
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/menu/MenuListView;->detachFromMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    .line 203
    iget-object v3, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 204
    .local v1, "menuItem":Lcom/oneplus/camera/ui/menu/MenuItem;
    iput-object v1, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 205
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/menu/MenuListView;->attachToMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    .line 208
    iput-boolean v5, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->isUpdatingViews:Z

    .line 209
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/MenuListView;->setupMenuItemSummary(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 210
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/MenuListView;->setupMenuItemSwitch(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 211
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/MenuListView;->setupMenuItemTitle(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 212
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->isUpdatingViews:Z

    .line 215
    return-object p2

    .line 197
    .end local v1    # "menuItem":Lcom/oneplus/camera/ui/menu/MenuItem;
    .end local v2    # "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .restart local v2    # "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    goto :goto_0
.end method

.method private onItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .line 222
    .local v8, "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    iget-object v7, v8, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    .line 223
    .local v7, "switchView":Landroid/widget/Switch;
    if-eqz v7, :cond_2

    iget-object v0, v8, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Landroid/widget/Switch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 225
    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 226
    .local v6, "isChecked":Z
    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 232
    .end local v6    # "isChecked":Z
    :cond_0
    :goto_1
    return-void

    .line 225
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1
.end method

.method private onMenuItemCheckedChanged(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 0
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 239
    return-void
.end method

.method private onMenuItemSwitchChanged(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;Z)V
    .locals 4
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    .param p2, "isChecked"    # Z

    .prologue
    .line 245
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 248
    .local v0, "oldValue":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 251
    .end local v0    # "oldValue":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method private setupMenuItemSummary(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 3
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .prologue
    .line 286
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 289
    .local v0, "summary":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 290
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupMenuItemSwitch(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 3
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .prologue
    .line 303
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 306
    .local v0, "isChecked":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 307
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 314
    .end local v0    # "isChecked":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 310
    .restart local v0    # "isChecked":Ljava/lang/Boolean;
    :cond_1
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 311
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setupMenuItemTitle(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 3
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .prologue
    .line 320
    iget-object v0, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 28
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/menu/MenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 258
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change adapter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/menu/MenuItem;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->notifyDataSetChanged()V

    .line 272
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 280
    return-void
.end method
