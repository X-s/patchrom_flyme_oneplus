.class Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/NfcPaymentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appInfos:[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

.field final synthetic this$0:Lcom/android/settings_ex/nfc/NfcPaymentPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->getItem(I)Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v2, p1

    .line 169
    .local v0, "appInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    if-nez p2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    invoke-static {v2}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->-get0(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 171
    const v3, 0x7f0400b5

    const/4 v4, 0x0

    .line 170
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 172
    new-instance v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;-><init>(Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;)V

    .line 173
    .local v1, "holder":Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    const v2, 0x7f1101b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 174
    const v2, 0x7f1101b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 175
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    :goto_0
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 187
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    iget-object v2, v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 190
    return-object p2

    .line 177
    .end local v1    # "holder":Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    goto :goto_0
.end method

.method makeDefault(Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .prologue
    .line 211
    iget-boolean v0, p1, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->-get1(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)Lcom/android/settings_ex/nfc/PaymentBackend;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 210
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 201
    .local v0, "appInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 199
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 207
    .local v0, "appInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 205
    return-void
.end method

.method public updateApps([Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0
    .param p1, "appInfos"    # [Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    .param p2, "currentDefault"    # Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method
