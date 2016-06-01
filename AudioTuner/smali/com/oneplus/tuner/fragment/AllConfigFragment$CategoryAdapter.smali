.class Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "AllConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/fragment/AllConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryAdapter"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;>;"
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->data:Ljava/util/ArrayList;

    .line 144
    iput-object p2, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->ctx:Landroid/content/Context;

    .line 145
    iput-object p3, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->data:Ljava/util/ArrayList;

    .line 146
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "viewHolder":Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
    if-nez p2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 169
    new-instance v0, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;

    .end local v0    # "viewHolder":Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;-><init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;)V

    .line 170
    .restart local v0    # "viewHolder":Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
    const v1, 0x7f0b0061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    # setter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->access$402(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 171
    const v1, 0x7f0b0158

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->name:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->access$502(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    :goto_0
    # getter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->access$400(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;

    # getter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->access$000(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    # getter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->name:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->access$500(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$CategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;

    # getter for: Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->access$100(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-object p2

    .line 174
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
    check-cast v0, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
    goto :goto_0
.end method
