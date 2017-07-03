.class public Lcom/oneplus/gallery2/editor/RotateEditorMode;
.super Lcom/oneplus/gallery2/editor/BaseEditorMode;
.source "RotateEditorMode.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/oneplus/gallery2/PhotoEditorFragment;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/BaseEditorMode;-><init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/editor/RotateEditorMode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/RotateEditorMode;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/RotateEditorMode;->rotate(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/editor/RotateEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/RotateEditorMode;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode;->flipX()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/editor/RotateEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/RotateEditorMode;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode;->flipY()V

    return-void
.end method

.method private flipX()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    .line 25
    .local v0, "photoEditor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 32
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 35
    :goto_1
    return-void

    .line 29
    :sswitch_0
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_2

    :cond_1
    move v2, v3

    .line 32
    goto :goto_0

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private flipY()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v0

    .line 42
    .local v0, "photoEditor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 49
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 52
    :goto_1
    return-void

    .line 46
    :sswitch_0
    sget-object v4, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_FLIP_X:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_2

    :cond_1
    move v2, v3

    .line 49
    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private rotate(Z)V
    .locals 4
    .param p1, "clockwise"    # Z

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode;->getPhotoEditor()Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-result-object v1

    .line 119
    .local v1, "photoEditor":Lcom/oneplus/gallery2/editor/PhotoEditor;
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    .local v0, "orientation":I
    if-eqz p1, :cond_1

    const/16 v2, 0x5a

    :goto_0
    add-int/2addr v0, v2

    .line 121
    rem-int/lit16 v0, v0, 0x168

    .line 122
    if-gez v0, :cond_0

    .line 123
    add-int/lit16 v0, v0, 0x168

    .line 124
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 125
    return-void

    .line 120
    :cond_1
    const/16 v2, -0x5a

    goto :goto_0
.end method


# virtual methods
.method protected onCreateUI(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    const v3, 0x7f030022

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    const v1, 0x7f060094

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "baseView":Landroid/view/View;
    const v1, 0x7f060095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/editor/RotateEditorMode$1;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode$1;-><init>(Lcom/oneplus/gallery2/editor/RotateEditorMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/editor/RotateEditorMode$2;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode$2;-><init>(Lcom/oneplus/gallery2/editor/RotateEditorMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/editor/RotateEditorMode$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/editor/RotateEditorMode$3;-><init>(Lcom/oneplus/gallery2/editor/RotateEditorMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-object v0
.end method

.method protected onDestroyUI()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected onEnter(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 112
    return-void
.end method
